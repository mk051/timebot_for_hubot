module.exports = (robot) ->

  robot.respond /今何時？/i, (msg) ->
    # 現在時刻を保持したDateインスタンスを作る
    d = new Date

    hour  = d.getHours()        # 時
    min   = d.getMinutes()      # 分
    sec   = d.getSeconds()      # 秒
    ms    = d.getMilliseconds() # ミリ秒（1000分の1秒）

    str  = " #{hour}時#{min}分#{sec}秒"
    msg.send str

  robot.respond /今日何日？/i, (msg) ->
    # 現在時刻を保持したDateインスタンスを作る
    d = new Date

    year  = d.getFullYear()     # 年（西暦）
    month = d.getMonth() + 1    # 月
    date  = d.getDate()         # 日

    str  = "#{year}年#{month}月#{date}日"
    msg.send str
