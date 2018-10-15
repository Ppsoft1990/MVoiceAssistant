.class public Lapw;
.super Ljava/lang/Object;
.source "MusicResultFactory.java"


# direct methods
.method public static a(ILjava/lang/String;)Lapo;
    .locals 4
    .param p0, "type"    # I
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 32
    .local v1, "result":Lapo;
    packed-switch p0, :pswitch_data_0

    .line 48
    :goto_0
    return-object v1

    .line 34
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lapw;->c(Ljava/lang/String;)Lapo;

    move-result-object v1

    .line 35
    goto :goto_0

    .line 37
    :pswitch_1
    invoke-static {p1}, Lapw;->b(Ljava/lang/String;)Lapo;

    move-result-object v1

    .line 38
    goto :goto_0

    .line 40
    :pswitch_2
    invoke-static {p1}, Lapw;->a(Ljava/lang/String;)Lapo;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v2, "MusicResultFactory"

    const-string/jumbo v3, "obtain"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 45
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "MusicResultFactory"

    const-string/jumbo v3, "obtain"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Lapo;
    .locals 7
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Lapw;->d(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 55
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Lapp;

    invoke-direct {v3}, Lapp;-><init>()V

    .line 57
    .local v3, "result":Lapp;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 58
    .local v0, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v0, v6, :cond_e

    .line 59
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 61
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_d

    .line 65
    const-string/jumbo v6, "title"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 66
    const-string/jumbo v6, "title"

    invoke-static {v2, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lapp;->c(Ljava/lang/String;)V

    .line 99
    .end local v4    # "title":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 100
    goto :goto_0

    .line 68
    :cond_3
    const-string/jumbo v6, "status"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 69
    const-string/jumbo v6, "status"

    invoke-static {v2, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lapp;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_4
    const-string/jumbo v6, "returncode"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 71
    const-string/jumbo v6, "returncode"

    invoke-static {v2, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lapp;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_5
    const-string/jumbo v6, "desc"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 73
    const-string/jumbo v6, "desc"

    invoke-static {v2, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lapp;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_6
    const-string/jumbo v6, "total"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 75
    const-string/jumbo v6, "total"

    invoke-static {v2, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "tstr":Ljava/lang/String;
    invoke-static {v5}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lapp;->a(I)V

    goto :goto_1

    .line 78
    .end local v5    # "tstr":Ljava/lang/String;
    :cond_7
    const-string/jumbo v6, "cacheid"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 79
    const-string/jumbo v6, "cacheid"

    invoke-static {v2, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lapp;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_8
    const-string/jumbo v6, "start"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 81
    const-string/jumbo v6, "start"

    invoke-static {v2, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    .restart local v5    # "tstr":Ljava/lang/String;
    invoke-static {v5}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lapp;->b(I)V

    goto/16 :goto_1

    .line 83
    .end local v5    # "tstr":Ljava/lang/String;
    :cond_9
    const-string/jumbo v6, "count"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 84
    const-string/jumbo v6, "count"

    invoke-static {v2, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    .restart local v5    # "tstr":Ljava/lang/String;
    invoke-static {v5}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lapp;->c(I)V

    goto/16 :goto_1

    .line 87
    .end local v5    # "tstr":Ljava/lang/String;
    :cond_a
    const-string/jumbo v6, "syssetting"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 88
    invoke-static {v2}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;)Lapr;

    move-result-object v6

    invoke-virtual {v3, v6}, Lapp;->a(Lapr;)V

    goto/16 :goto_1

    .line 89
    :cond_b
    const-string/jumbo v6, "songlist"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 90
    invoke-static {v2}, Lapw;->b(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v6}, Lapp;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 91
    :cond_c
    const-string/jumbo v6, "searchitems"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    invoke-static {v2}, Lapw;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v6}, Lapp;->b(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 94
    :cond_d
    const/4 v6, 0x3

    if-ne v0, v6, :cond_2

    .line 95
    const-string/jumbo v6, "result"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    .end local v1    # "name":Ljava/lang/String;
    :cond_e
    return-object v3
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)Lapr;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v2, Lapr;

    invoke-direct {v2}, Lapr;-><init>()V

    .line 110
    .local v2, "settings":Lapr;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 111
    .local v0, "eventType":I
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    .line 112
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 114
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 115
    goto :goto_0

    .line 117
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 118
    const-string/jumbo v3, "privatebaseurl"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    const-string/jumbo v3, "privatebaseurl"

    invoke-static {p0, v3}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lapr;->b(Ljava/lang/String;)V

    .line 131
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 132
    goto :goto_0

    .line 121
    :cond_3
    const-string/jumbo v3, "publicbaseurl"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    const-string/jumbo v3, "publicbaseurl"

    invoke-static {p0, v3}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lapr;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_4
    const-string/jumbo v3, "uid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    const-string/jumbo v3, "uid"

    invoke-static {p0, v3}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lapr;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 127
    const-string/jumbo v3, "syssetting"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    .end local v1    # "name":Ljava/lang/String;
    :cond_6
    return-object v2
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 347
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 348
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 350
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 352
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 353
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Lapo;
    .locals 5
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {p0}, Lapw;->d(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 218
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Laps;

    invoke-direct {v3}, Laps;-><init>()V

    .line 219
    .local v3, "result":Laps;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 220
    .local v0, "eventType":I
    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    .line 221
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "name":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 224
    const-string/jumbo v4, "status"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    const-string/jumbo v4, "status"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laps;->c(Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_e

    const-string/jumbo v4, "rsp"

    .line 254
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 259
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-object v3

    .line 226
    .restart local v1    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "returncode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 227
    const-string/jumbo v4, "returncode"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laps;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 228
    :cond_3
    const-string/jumbo v4, "desc"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 229
    const-string/jumbo v4, "desc"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laps;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :cond_4
    const-string/jumbo v4, "code"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 231
    const-string/jumbo v4, "code"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laps;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_5
    const-string/jumbo v4, "info"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 233
    const-string/jumbo v4, "info"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laps;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :cond_6
    const-string/jumbo v4, "contentid"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 235
    const-string/jumbo v4, "contentid"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laps;->a:Ljava/lang/String;

    goto :goto_1

    .line 236
    :cond_7
    const-string/jumbo v4, "songname"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 237
    const-string/jumbo v4, "songname"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laps;->d:Ljava/lang/String;

    goto/16 :goto_1

    .line 238
    :cond_8
    const-string/jumbo v4, "singer"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 239
    const-string/jumbo v4, "singer"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laps;->e:Ljava/lang/String;

    goto/16 :goto_1

    .line 240
    :cond_9
    const-string/jumbo v4, "img"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 241
    const-string/jumbo v4, "img"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laps;->k:Ljava/lang/String;

    goto/16 :goto_1

    .line 242
    :cond_a
    const-string/jumbo v4, "limit"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 243
    const-string/jumbo v4, "limit"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Laps;->q:I

    goto/16 :goto_1

    .line 245
    :cond_b
    const-string/jumbo v4, "filesize"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 246
    const-string/jumbo v4, "filesize"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laps;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 247
    :cond_c
    const-string/jumbo v4, "durl"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 248
    const-string/jumbo v4, "durl"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laps;->l:Ljava/lang/String;

    goto/16 :goto_1

    .line 249
    :cond_d
    const-string/jumbo v4, "lrc"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    const-string/jumbo v4, "lrc"

    invoke-static {v2, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laps;->m:Ljava/lang/String;

    goto/16 :goto_1

    .line 257
    :cond_e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 258
    goto/16 :goto_0
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    const/4 v1, 0x0

    .line 143
    .local v1, "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 144
    .local v0, "eventType":I
    :goto_0
    if-eq v0, v5, :cond_9

    .line 145
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 147
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 148
    goto :goto_0

    .line 150
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    .line 151
    const-string/jumbo v4, "song"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    new-instance v1, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .end local v1    # "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    invoke-direct {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;-><init>()V

    .line 153
    .restart local v1    # "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c(I)V

    .line 172
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 173
    goto :goto_0

    .line 155
    :cond_3
    const-string/jumbo v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 156
    const-string/jumbo v4, "id"

    invoke-static {p0, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->l(Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_4
    const-string/jumbo v4, "songname"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 158
    const-string/jumbo v4, "songname"

    invoke-static {p0, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->m(Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_5
    const-string/jumbo v4, "singername"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 160
    const-string/jumbo v4, "singername"

    invoke-static {p0, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_6
    const-string/jumbo v4, "album"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 162
    const-string/jumbo v4, "album"

    invoke-static {p0, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_7
    const-string/jumbo v4, "duration"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    const-string/jumbo v4, "duration"

    invoke-static {p0, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_8
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 168
    const-string/jumbo v4, "songlist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    .end local v3    # "name":Ljava/lang/String;
    :cond_9
    return-object v2
.end method

.method private static c(Ljava/lang/String;)Lapo;
    .locals 11
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    .line 265
    invoke-static {p0}, Lapw;->d(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 267
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Laps;

    invoke-direct {v5}, Laps;-><init>()V

    .line 268
    .local v5, "result":Laps;
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 269
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v7, :cond_1

    .line 270
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "name":Ljava/lang/String;
    const/4 v6, 0x2

    if-ne v1, v6, :cond_14

    .line 272
    const-string/jumbo v6, "status"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 273
    const-string/jumbo v6, "status"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Laps;->c(Ljava/lang/String;)V

    .line 322
    :cond_0
    :goto_1
    if-ne v1, v10, :cond_15

    const-string/jumbo v6, "result"

    .line 323
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 328
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v5

    .line 274
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "returncode"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 275
    const-string/jumbo v6, "returncode"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Laps;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :cond_3
    const-string/jumbo v6, "desc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 277
    const-string/jumbo v6, "desc"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Laps;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 278
    :cond_4
    const-string/jumbo v6, "id"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 279
    const-string/jumbo v6, "id"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->a:Ljava/lang/String;

    goto :goto_1

    .line 280
    :cond_5
    const-string/jumbo v6, "type"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 281
    const-string/jumbo v6, "type"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->b:Ljava/lang/String;

    goto :goto_1

    .line 282
    :cond_6
    const-string/jumbo v6, "typedesc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 283
    const-string/jumbo v6, "typedesc"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->c:Ljava/lang/String;

    goto :goto_1

    .line 284
    :cond_7
    const-string/jumbo v6, "name"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 285
    const-string/jumbo v6, "name"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->d:Ljava/lang/String;

    goto :goto_1

    .line 286
    :cond_8
    const-string/jumbo v6, "singer"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 287
    const-string/jumbo v6, "singer"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->e:Ljava/lang/String;

    goto/16 :goto_1

    .line 288
    :cond_9
    const-string/jumbo v6, "pricedesc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 289
    const-string/jumbo v6, "pricedesc"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->f:Ljava/lang/String;

    goto/16 :goto_1

    .line 290
    :cond_a
    const-string/jumbo v6, "expiredate"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 291
    const-string/jumbo v6, "expiredate"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->g:Ljava/lang/String;

    goto/16 :goto_1

    .line 292
    :cond_b
    const-string/jumbo v6, "filesize"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 293
    const-string/jumbo v6, "filesize"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 294
    :cond_c
    const-string/jumbo v6, "duration"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 295
    const-string/jumbo v6, "duration"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "duration":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Laps;->n:J

    goto/16 :goto_1

    .line 297
    .end local v0    # "duration":Ljava/lang/String;
    :cond_d
    const-string/jumbo v6, "internetresource"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 298
    const-string/jumbo v6, "internetresource"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->i:Ljava/lang/String;

    goto/16 :goto_1

    .line 300
    :cond_e
    const-string/jumbo v6, "downloadtype"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 301
    const-string/jumbo v6, "downloadtype"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->j:Ljava/lang/String;

    goto/16 :goto_1

    .line 302
    :cond_f
    const-string/jumbo v6, "picurl"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 303
    const-string/jumbo v6, "picurl"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->k:Ljava/lang/String;

    goto/16 :goto_1

    .line 304
    :cond_10
    const-string/jumbo v6, "fileurl"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 305
    const-string/jumbo v6, "fileurl"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->l:Ljava/lang/String;

    goto/16 :goto_1

    .line 306
    :cond_11
    const-string/jumbo v6, "fileformat"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 307
    const-string/jumbo v6, "fileformat"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Laps;->o:Ljava/lang/String;

    goto/16 :goto_1

    .line 308
    :cond_12
    const-string/jumbo v6, "needredirect"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 309
    const-string/jumbo v6, "needredirect"

    invoke-static {v4, v6}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "needredirect":Ljava/lang/String;
    const-string/jumbo v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    move v6, v7

    :goto_3
    iput-boolean v6, v5, Laps;->p:Z

    goto/16 :goto_1

    :cond_13
    const/4 v6, 0x0

    goto :goto_3

    .line 312
    .end local v3    # "needredirect":Ljava/lang/String;
    :cond_14
    if-ne v1, v10, :cond_0

    .line 313
    const-string/jumbo v6, "item"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 314
    if-eqz v5, :cond_0

    .line 315
    iget-boolean v6, v5, Laps;->p:Z

    if-nez v6, :cond_0

    goto/16 :goto_2

    .line 326
    :cond_15
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 327
    goto/16 :goto_0
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lapq;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lapq;>;"
    const/4 v1, 0x0

    .line 184
    .local v1, "item":Lapq;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 185
    .local v0, "eventType":I
    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    .line 186
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 188
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 189
    goto :goto_0

    .line 191
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    .line 192
    const-string/jumbo v4, "searchitem"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    new-instance v1, Lapq;

    .end local v1    # "item":Lapq;
    invoke-direct {v1}, Lapq;-><init>()V

    .line 209
    .restart local v1    # "item":Lapq;
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 210
    goto :goto_0

    .line 194
    :cond_3
    const-string/jumbo v4, "searchtype"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    const-string/jumbo v4, "searchtype"

    invoke-static {p0, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lapq;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_4
    const-string/jumbo v4, "song"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 197
    const-string/jumbo v4, "song"

    invoke-static {p0, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lapq;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_5
    const-string/jumbo v4, "singer"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 199
    const-string/jumbo v4, "singer"

    invoke-static {p0, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lapq;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_6
    const-string/jumbo v4, "album"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    const-string/jumbo v4, "album"

    invoke-static {p0, v4}, Lapw;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lapq;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_7
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 204
    const-string/jumbo v4, "searchitem"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v3    # "name":Ljava/lang/String;
    :cond_8
    return-object v2
.end method

.method private static d(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 4
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 336
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 337
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 338
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v3, "utf-8"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 339
    return-object v1
.end method
