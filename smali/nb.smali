.class public Lnb;
.super Ljava/lang/Object;
.source "BusinessAuthHandler.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lnb;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lnb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnb;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lnb;->b:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;)Lnb;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v0, Lnb;->c:Lnb;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lnb;

    invoke-direct {v0, p0}, Lnb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnb;->c:Lnb;

    .line 51
    :cond_0
    sget-object v0, Lnb;->c:Lnb;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lnb;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 159
    invoke-static {p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v1

    .line 160
    .local v1, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-nez v1, :cond_0

    move v6, v7

    .line 188
    :goto_0
    return v6

    .line 163
    :cond_0
    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    .line 164
    .local v5, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-nez v5, :cond_1

    move v6, v7

    .line 165
    goto :goto_0

    .line 167
    :cond_1
    const-string/jumbo v6, "result"

    invoke-virtual {v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 168
    .local v4, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move v6, v7

    .line 169
    goto :goto_0

    .line 171
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v8, "object"

    invoke-virtual {v6, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 172
    .local v3, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    move v6, v7

    .line 173
    goto :goto_0

    .line 175
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 176
    .local v2, "obj":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v2, :cond_6

    .line 179
    const-string/jumbo v6, "auth_action"

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, "authActionList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_6

    .line 183
    const-string/jumbo v9, "1"

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 184
    const/4 v6, 0x1

    goto :goto_0

    .end local v0    # "authActionList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v2    # "obj":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_7
    move v6, v7

    .line 188
    goto :goto_0
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_BUSINESS_AUTH_TIME"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "lastAuthTime":Ljava/lang/String;
    sget-object v1, Lnb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "business forward auth time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, " "

    .line 146
    invoke-static {v0}, Lbaa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    :cond_0
    const/4 v1, 0x1

    .line 149
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 104
    invoke-direct {p0}, Lnb;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_NEW_GUIDE_SHOW"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "dateTime":Ljava/lang/String;
    sget-object v2, Lnb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "business last auth time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_BUSINESS_AUTH_TIME"

    invoke-virtual {v2, v3, v1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v2, "Auth"

    const-string/jumbo v3, "common filter action queryAuthInfo"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    iget-object v2, p0, Lnb;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    sget-object v2, Lnb;->a:Ljava/lang/String;

    const-string/jumbo v3, "network not connect send auth message"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    .end local v1    # "dateTime":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local v0    # "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    .restart local v1    # "dateTime":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lnb;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v2

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v4, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_SERVER_PARAM:Lcom/iflytek/common/cmccauth/log/AuthScene;

    new-instance v5, Lnb$1;

    invoke-direct {v5, p0}, Lnb$1;-><init>(Lnb;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "requestType"    # I

    .prologue
    .line 59
    sget-object v4, Lnb;->a:Ljava/lang/String;

    const-string/jumbo v5, "start handle authAction"

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v4, Lnb;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    sget-object v4, Lnb;->a:Ljava/lang/String;

    const-string/jumbo v5, "result is null"

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v2, 0x0

    .line 67
    .local v2, "isAuthAction":Z
    const/16 v4, 0x17

    if-ne p2, v4, :cond_2

    .line 68
    invoke-direct {p0, p1}, Lnb;->b(Ljava/lang/String;)Z

    move-result v2

    .line 82
    :goto_1
    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lnb;->a()V

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {p1}, Lnb;->a(Ljava/lang/String;)Z

    move-result v3

    .line 73
    .local v3, "isJSON":Z
    new-instance v1, Lwa;

    invoke-direct {v1}, Lwa;-><init>()V

    .line 74
    .local v1, "filterResult":Lwa;
    if-eqz v3, :cond_3

    .line 75
    invoke-static {v1, p1}, Lvz;->b(Lwa;Ljava/lang/String;)V

    .line 79
    :goto_2
    invoke-virtual {v1}, Lwa;->getAuthAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 77
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    invoke-static {v1, p1}, Lvz;->a(Lwa;Ljava/lang/String;)V

    goto :goto_2
.end method
