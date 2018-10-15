.class public Lwi;
.super Ljava/lang/Object;
.source "CmccChannel.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lwi;->c:Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lwi;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 55
    iget-object v2, p0, Lwi;->c:Landroid/content/Context;

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 56
    .local v0, "cfg":Lcom/iflytek/yd/business/AppConfig;
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, "downFrom":I
    const v2, 0xf452e0

    if-lt v1, v2, :cond_1

    const v2, 0xf456c8

    if-ge v1, v2, :cond_1

    .line 59
    const-string/jumbo v2, "config/viafly_cmcc_channel.xml"

    invoke-direct {p0, p1, v2}, Lwi;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lwi;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 61
    const-string/jumbo v2, ""

    iput-object v2, p0, Lwi;->a:Ljava/lang/String;

    .line 62
    const-string/jumbo v2, "MobileChannel"

    const-string/jumbo v3, "cmcc sub channel null."

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    :goto_0
    const-string/jumbo v2, "CHANNEL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " cpa channel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lwi;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cpa name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lwi;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 65
    :cond_1
    const-string/jumbo v2, "MobileChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not cmcc_cpa chl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string/jumbo v2, "channelOfOfficial"

    iput-object v2, p0, Lwi;->a:Ljava/lang/String;

    .line 67
    const-string/jumbo v2, ""

    iput-object v2, p0, Lwi;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelFile"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 75
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 76
    .local v7, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 78
    .local v4, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 79
    const-string/jumbo v8, "utf-8"

    invoke-interface {v7, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :goto_0
    :try_start_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 88
    .local v3, "eventType":I
    const/4 v5, 0x0

    .line 89
    .local v5, "tag":I
    :goto_1
    if-eq v3, v9, :cond_5

    .line 90
    if-ne v3, v10, :cond_2

    .line 91
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    .line 92
    .local v6, "tmp_count":I
    if-lez v6, :cond_1

    .line 93
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "attr":Ljava/lang/String;
    const-string/jumbo v8, "cmcc_sub_channel"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 95
    const/4 v5, 0x1

    .line 97
    :cond_0
    const-string/jumbo v8, "cmcc_sub_name"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 98
    const/4 v5, 0x2

    .line 112
    .end local v0    # "attr":Ljava/lang/String;
    .end local v6    # "tmp_count":I
    :cond_1
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v3

    goto :goto_1

    .line 80
    .end local v3    # "eventType":I
    .end local v5    # "tag":I
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 83
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "eventType":I
    .restart local v5    # "tag":I
    :cond_2
    const/4 v8, 0x3

    if-ne v3, v8, :cond_3

    .line 102
    const/4 v5, 0x0

    goto :goto_2

    .line 103
    :cond_3
    const/4 v8, 0x4

    if-ne v3, v8, :cond_1

    .line 104
    if-ne v5, v9, :cond_4

    .line 105
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lwi;->a:Ljava/lang/String;

    .line 107
    :cond_4
    if-ne v5, v10, :cond_1

    .line 108
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lwi;->b:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 114
    .end local v3    # "eventType":I
    .end local v5    # "tag":I
    :catch_2
    move-exception v1

    .line 115
    .restart local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 121
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    .line 123
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 128
    :cond_6
    :goto_4
    return-void

    .line 116
    :catch_3
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 118
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 124
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method
