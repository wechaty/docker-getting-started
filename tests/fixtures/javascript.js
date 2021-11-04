import { WechatyBuilder } from 'wechaty'
const bot = WechatyBuilder.build({
  puppet: 'wechaty-puppet-wechat'
})
bot.on('scan', qrcode => {
  console.log(qrcode)
  console.log('SMOKE TESTING PASSED')
  process.exit(0)
})
bot.start()

setTimeout(() => process.exit(1), 60 * 1000)
