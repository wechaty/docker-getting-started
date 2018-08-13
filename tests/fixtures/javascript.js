import { Wechaty } from 'wechaty'
const bot = new Wechaty()
bot.on('scan', qrcode => {
  console.log(qrcode)
  process.exit(0)
})
bot.start()

setTimeout(() => process.exit(1), 60 * 1000)
