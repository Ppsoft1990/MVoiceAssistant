.class public Laaj;
.super Ljava/lang/Object;
.source "SougouHMTPluginProxy.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;
.implements Lvp$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laaj$a;,
        Laaj$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Laaj;


# instance fields
.field private c:Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;

.field private final d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Laaj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laaj;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string/jumbo v0, "120004"

    iput-object v0, p0, Laaj;->d:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Laaj;->e:Z

    return-void
.end method

.method public static a()Laaj;
    .locals 4

    .prologue
    .line 58
    sget-object v0, Laaj;->b:Laaj;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Laaj;

    invoke-direct {v0}, Laaj;-><init>()V

    sput-object v0, Laaj;->b:Laaj;

    .line 60
    sget-object v0, Laaj;->b:Laaj;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.SOGOU_PLUGIN_SDK_GRAY_CONTROL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Laaj;->e:Z

    .line 62
    :cond_0
    sget-object v0, Laaj;->b:Laaj;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Laaj;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p0}, Laaj;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    :try_start_0
    iget-object v1, p0, Laaj;->c:Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;

    invoke-interface {v1}, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;->checkAndDoUpdate()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v1, Laaj;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Laaj;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Laaj;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 320
    invoke-virtual {p0}, Laaj;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    iget-object v1, p0, Laaj;->c:Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;

    invoke-interface {v1}, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;->sendContactInfo()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v1, Laaj;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Laaj;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Laaj;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "pNumber"    # Ljava/lang/String;
    .param p2, "isFromLocal"    # Z

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-virtual {p0}, Laaj;->b()Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-object v2

    .line 193
    :cond_1
    const/4 v1, 0x0

    .line 195
    .local v1, "result":Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;
    if-eqz p2, :cond_2

    .line 196
    :try_start_0
    iget-object v3, p0, Laaj;->c:Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;

    invoke-interface {v3, p1}, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;->getNumberInfoFromLocal(Ljava/lang/String;)Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 226
    :goto_1
    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v1}, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->getMarkContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 198
    :cond_2
    :try_start_1
    iget-object v3, p0, Laaj;->c:Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;

    invoke-interface {v3, p1}, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;->getNumberInfoFromNet(Ljava/lang/String;)Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v3, Laaj;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 203
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v3, Laaj;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v3, Laaj;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;ZLaaj$b;)V
    .locals 4
    .param p1, "pNumber"    # Ljava/lang/String;
    .param p2, "isFromLocal"    # Z
    .param p3, "pListener"    # Laaj$b;

    .prologue
    .line 240
    new-instance v0, Laaj$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Laaj$a;-><init>(Laaj;Laaj$1;)V

    .line 241
    .local v0, "tNewTask":Laaj$a;
    if-eqz p2, :cond_0

    const-string/jumbo v1, "local"

    .line 242
    .local v1, "tStrFlagLocalRequest":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v2}, Laaj$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 243
    return-void

    .line 241
    .end local v1    # "tStrFlagLocalRequest":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "net"

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0}, Laaj;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_AUTO_PHONE_DATABASE_UPDATE"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.SOGOU_PLUGIN_AUTO_INSTALL_COUNT"

    invoke-virtual {v2, v3, v1}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, "tAutoInstallTime":I
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 173
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.SOGOU_PLUGIN_AUTO_INSTALL_COUNT"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;I)V

    .line 177
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 6
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    .line 274
    sget-object v2, Laaj;->a:Ljava/lang/String;

    const-string/jumbo v3, "checkAndDoUpdate start"

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Laaj;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.SOGOU_PLUGIN_SDK_LOCAL_DATA_UPDATE_TIME"

    invoke-virtual {v2, v3, v4, v5}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 278
    .local v0, "lastUpdateTime":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 280
    :cond_0
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    sget-object v2, Laaj;->a:Ljava/lang/String;

    const-string/jumbo v3, "updeta and upload data now"

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Laaj;->e()V

    .line 283
    invoke-direct {p0}, Laaj;->f()V

    .line 285
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.SOGOU_PLUGIN_SDK_LOCAL_DATA_UPDATE_TIME"

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 286
    invoke-virtual {v2, v3, v4, v5}, Lil;->a(Ljava/lang/String;J)V

    .line 293
    .end local v0    # "lastUpdateTime":J
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Laaj;->c:Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laaj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Laaj;->e:Z

    return v0
.end method

.method public onGetGrayCtrlSuccess(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 370
    const-string/jumbo v1, "120004"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    sget-object v2, Laaj;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "120004:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v1, "120004"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "120004"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 374
    .local v0, "isSupport":Z
    :goto_0
    iget-boolean v1, p0, Laaj;->e:Z

    if-eq v0, v1, :cond_0

    .line 375
    iput-boolean v0, p0, Laaj;->e:Z

    .line 376
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.SOGOU_PLUGIN_SDK_GRAY_CONTROL"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Z)V

    .line 381
    .end local v0    # "isSupport":Z
    :cond_0
    return-void

    .line 373
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPluginDisabled(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;I)V
    .locals 2
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .param p2, "event"    # I

    .prologue
    .line 143
    sget-object v0, Laaj;->a:Ljava/lang/String;

    const-string/jumbo v1, "Sougou Plugin Disabled"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Laaj;->c:Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;

    .line 145
    return-void
.end method

.method public onPluginEnabled(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;I)V
    .locals 6
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .param p2, "event"    # I

    .prologue
    const/4 v5, 0x7

    .line 67
    sget-object v3, Laaj;->a:Ljava/lang/String;

    const-string/jumbo v4, "Sougou Plugin Enabled"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 71
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v3

    const-class v4, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;

    invoke-interface {v3, v5, v4}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPluginAbility(ILjava/lang/Class;)Lcom/iflytek/yd/plugin/IPluginAbility;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;

    .line 74
    .local v2, "sougouSDK":Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginBundle()Lcom/iflytek/yd/plugin/AbsPluginBundle;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Lcom/iflytek/yd/plugin/AbsPluginBundle;->getPluginResource()Lcom/iflytek/yd/plugin/IPluginResource;

    move-result-object v4

    invoke-interface {v4}, Lcom/iflytek/yd/plugin/IPluginResource;->getPluginInstallPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/lib/libHAOMA.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v3, "haha"

    const-string/jumbo v4, "plugin init start"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v3, "haha"

    const-string/jumbo v4, "plugin init end"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object v2, p0, Laaj;->c:Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;

    .line 81
    sget-object v3, Laaj;->a:Ljava/lang/String;

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_0
    invoke-interface {v2}, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;->checkAndDoUpdate()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 139
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "sougouSDK":Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "sougouSDK":Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v3, Laaj;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v3, Laaj;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    sget-object v3, Laaj;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_3
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Laaj;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
