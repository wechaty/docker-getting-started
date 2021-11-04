/**
 *   Wechaty - https://github.com/chatie/wechaty
 *
 *   @copyright 2016-2018 Huan LI <zixia@zixia.net>
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 *
 */
import {
  WechatyBuilder,
}                   from 'wechaty'

import qrTerm from 'qrcode-terminal'

/**
 *
 * 1. Declare your Bot!
 *
 */
const bot = WechatyBuilder.build({
  name : 'javascript-esm',
  puppet: 'wechaty-puppet-wechat',
})

/**
 *
 * 2. Register event handlers for Bot
 *
 */
bot
.on('login',    onLogin)
.on('scan',     onScan)
.on('error',    onError)
.on('message',  onMessage)

/**
 *
 * 3. Start the bot!
 *
 */
bot.start()
.catch(async e => {
  console.error('Bot start() fail:', e)
  await bot.stop()
  process.exit(-1)
})

/**
 *
 * 4. You are all set. ;-]
 *
 */

/**
 *
 * 5. Define Event Handler Functions for:
 *  `scan`, `login`, `logout`, `error`, and `message`
 *
 */
function onScan (qrcode, status) {
  qrTerm.generate(qrcode, { small: true })

  // Generate a QR Code URL to show it in browser
  const qrcodeImageUrl = [
    'https://wechaty.js.org/qrcode/',
    encodeURIComponent(qrcode),
  ].join('')

  console.log(`[${status}] ${qrcodeImageUrl}\nScan QR Code above to log in: `)
}

function onLogin (user) {
  console.log(`${user.name()} login`)
  bot.say('Wechaty login').catch(console.error)
}

function onError (e) {
  console.error('Bot error:', e)
}

/**
 *
 * 6. The most important handler is for:
 *    dealing with Messages.
 *
 */
async function onMessage (message) {
  console.log(message.toString())
}
