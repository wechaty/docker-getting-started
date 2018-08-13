import { Wechaty } from 'wechaty'
const bot: Wechaty = new Wechaty()
bot.on('scan', (qrcode: string) => {
  console.log(qrcode)
  process.exit(0)
})
bot.start()

setTimeout(() => process.exit(1), 60 * 1000)
