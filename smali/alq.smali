.class public Lalq;
.super Ljava/lang/Object;
.source "CmccSignHelper.java"


# static fields
.field private static c:Lalq;

.field private static h:Landroid/content/Context;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lals;

.field private d:Landroid/os/Handler;

.field private final e:I

.field private final f:I

.field private g:Lorg/json/JSONObject;

.field private i:Lalt;

.field private j:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v2, "CmccSignHelper"

    iput-object v2, p0, Lalq;->a:Ljava/lang/String;

    .line 30
    const/4 v2, 0x1

    iput v2, p0, Lalq;->e:I

    .line 31
    const/4 v2, 0x2

    iput v2, p0, Lalq;->f:I

    .line 87
    new-instance v2, Lalq$1;

    invoke-direct {v2, p0}, Lalq$1;-><init>(Lalq;)V

    iput-object v2, p0, Lalq;->i:Lalt;

    .line 165
    new-instance v2, Lalq$2;

    invoke-direct {v2, p0}, Lalq$2;-><init>(Lalq;)V

    iput-object v2, p0, Lalq;->j:Landroid/os/Handler$Callback;

    .line 52
    new-instance v2, Lals;

    iget-object v3, p0, Lalq;->i:Lalt;

    invoke-direct {v2, v3}, Lals;-><init>(Lalt;)V

    iput-object v2, p0, Lalq;->b:Lals;

    .line 53
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lalq;->j:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lalq;->d:Landroid/os/Handler;

    .line 54
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_OPCODES_AND_LIMIT_TIME"

    const-string/jumbo v4, "{\'SIGN\':{\'type\':\'day\',\'limitTime\':0},\'MIC_WEATHER\':{\'type\':\'day\',\'limitTime\':0},\'MIC_REMIND\':{\'type\':\'day\',\'limitTime\':0},\'MIC_TRANS\':{\'type\':\'day\',\'limitTime\':0},\'FAST_NOTE\':{\'type\':\'day\',\'limitTime\':0},\'VOICE_PKG\':{\'type\':\'day\',\'limitTime\':0},\'LISTEN_BOOK\':{\'type\':\'day\',\'limitTime\':0},\'SHARE_LINK\':{\'type\':\'day\',\'limitTime\':0},\'SHARE_ACT\':{\'type\':\'day\',\'limitTime\':0},\'SHARE_DAY\':{\'type\':\'day\',\'limitTime\':0},\'N_MIC_WEATHER\':{\'type\':\'ever\',\'limitTime\':0},\'N_MIC_REMIND\':{\'type\':\'ever\',\'limitTime\':0},\'N_MIC_TRANS\':{\'type\':\'ever\',\'limitTime\':0},\'N_FAST_NOTE\':{\'type\':\'ever\',\'limitTime\':0},\'N_VOICE_PKG\':{\'type\':\'ever\',\'limitTime\':0},\'N_LISTEN_BOOK\':{\'type\':\'ever\',\'limitTime\':0},\'N_SET_DATA\':{\'type\':\'ever\',\'limitTime\':0},\'N_SET_VOICEPRINT\':{\'type\':\'ever\',\'limitTime\':0}}"

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "opCodesAndTime":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lalq;->g:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "CmccSignHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lalq;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lalq;->c:Lalq;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lalq;

    invoke-direct {v0}, Lalq;-><init>()V

    sput-object v0, Lalq;->c:Lalq;

    .line 46
    :cond_0
    sput-object p0, Lalq;->h:Landroid/content/Context;

    .line 47
    sget-object v0, Lalq;->c:Lalq;

    return-object v0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 190
    iget-object v1, p0, Lalq;->d:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lalq;->d:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 192
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 193
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lalq;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method static synthetic a(Lalq;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lalq;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lalq;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lalq;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lalq;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lalq;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lalq;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lalq;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lalq;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string/jumbo v1, "CmccSignHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "opCode request duplicate. opCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lalq;->g:Lorg/json/JSONObject;

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Lama;->a(Ljava/lang/String;Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    .local v0, "opCodesTimeObj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 116
    iput-object v0, p0, Lalq;->g:Lorg/json/JSONObject;

    .line 117
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_OPCODES_AND_LIMIT_TIME"

    iget-object v3, p0, Lalq;->g:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 124
    new-instance v2, Laly;

    invoke-direct {v2}, Laly;-><init>()V

    .line 125
    .local v2, "resultHandler":Laly;
    invoke-virtual {v2, p1}, Laly;->b(Ljava/lang/String;)Lalz;

    move-result-object v3

    .line 126
    .local v3, "signLimitInfoData":Lalz;
    if-eqz v3, :cond_4

    .line 127
    sget-object v4, Lalq;->h:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 128
    new-instance v0, Lcom/iflytek/viafly/ui/CustomToast;

    sget-object v4, Lalq;->h:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/iflytek/viafly/ui/CustomToast;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "customToast":Lcom/iflytek/viafly/ui/CustomToast;
    invoke-virtual {v3}, Lalz;->b()I

    move-result v4

    invoke-virtual {v3}, Lalz;->e()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/viafly/ui/CustomToast;->makeNormalText(II)V

    .line 132
    .end local v0    # "customToast":Lcom/iflytek/viafly/ui/CustomToast;
    :cond_0
    invoke-virtual {v3}, Lalz;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lalq;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-instance v5, Lalv;

    const-string/jumbo v6, "signEvent"

    invoke-direct {v5, v6}, Lalv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 135
    :cond_1
    invoke-virtual {v3}, Lalz;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lalq;->g:Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    .line 136
    invoke-virtual {v3}, Lalz;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lalq;->g:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lalz;->d()I

    move-result v6

    invoke-static {v4, v5, v6}, Lama;->a(Ljava/lang/String;Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 137
    .local v1, "opCodesTimeObj":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 138
    iput-object v1, p0, Lalq;->g:Lorg/json/JSONObject;

    .line 139
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_OPCODES_AND_LIMIT_TIME"

    iget-object v6, p0, Lalq;->g:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v1    # "opCodesTimeObj":Lorg/json/JSONObject;
    .end local v2    # "resultHandler":Laly;
    .end local v3    # "signLimitInfoData":Lalz;
    :cond_2
    :goto_0
    return-void

    .line 142
    .restart local v2    # "resultHandler":Laly;
    .restart local v3    # "signLimitInfoData":Lalz;
    :cond_3
    const-string/jumbo v4, "CmccSignHelper"

    const-string/jumbo v5, "isLimitOfNext is false"

    invoke-static {v4, v5}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_4
    const-string/jumbo v4, "CmccSignHelper"

    const-string/jumbo v5, "onResult parse fail"

    invoke-static {v4, v5}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    .end local v2    # "resultHandler":Laly;
    .end local v3    # "signLimitInfoData":Lalz;
    :cond_5
    const-string/jumbo v4, "CmccSignHelper"

    const-string/jumbo v5, "add sign return result is empty"

    invoke-static {v4, v5}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string/jumbo v0, "MIC_WEATHER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MIC_REMIND"

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MIC_TRANS"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "N_MIC_WEATHER"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "N_MIC_TRANS"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "N_MIC_REMIND"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v1, "CmccSignHelper"

    const-string/jumbo v4, "opCode is empty"

    invoke-static {v1, v4}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lalq;->g:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lalq;->g:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    .local v0, "infoObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v1, "limittime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 75
    .local v2, "limitTime":J
    const-string/jumbo v1, "CmccSignHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "limitTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lalq;->b:Lals;

    invoke-virtual {v1, p1}, Lals;->a(Ljava/lang/String;)J

    goto :goto_0
.end method
