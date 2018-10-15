.class Lahq$3;
.super Ljava/lang/Object;
.source "HomeSplashScreenHelper.java"

# interfaces
.implements Lcom/iflytek/viafly/ad/business/SplashADDataManager$SplashADResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahq;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahq;


# direct methods
.method constructor <init>(Lahq;)V
    .locals 0
    .param p1, "this$0"    # Lahq;

    .prologue
    .line 227
    iput-object p1, p0, Lahq$3;->a:Lahq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSplashADResult(Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V
    .locals 6
    .param p1, "splashADData"    # Lorg/json/JSONObject;
    .param p2, "miguNativeAdDataRef"    # Lcom/migu/voiceads/MIGUNativeAdDataRef;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 230
    iget-object v0, p0, Lahq$3;->a:Lahq;

    invoke-static {v0, v4, v5}, Lahq;->a(Lahq;J)J

    .line 231
    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p0, Lahq$3;->a:Lahq;

    invoke-static {v0, v3}, Lahq;->c(Lahq;Z)Z

    .line 233
    const-string/jumbo v0, "HomeSplashScreenHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "splashADData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    iget-object v0, p0, Lahq$3;->a:Lahq;

    invoke-static {v0}, Lahq;->c(Lahq;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const-string/jumbo v0, "HomeSplashScreenHelper"

    const-string/jumbo v1, "not time out"

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lahq$3;->a:Lahq;

    iget-object v1, p0, Lahq$3;->a:Lahq;

    invoke-static {v1}, Lahq;->d(Lahq;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lahq$3;->a:Lahq;

    invoke-static {v2}, Lahq;->e(Lahq;)Ljava/util/TimerTask;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lahq;->a(Lahq;Ljava/util/Timer;Ljava/util/TimerTask;)V

    .line 241
    iget-object v0, p0, Lahq$3;->a:Lahq;

    invoke-static {v0}, Lahq;->a(Lahq;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lahq$3;->a:Lahq;

    invoke-virtual {v0}, Lahq;->q()Lahw;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lahq$3;->a:Lahq;

    invoke-static {v0}, Lahq;->f(Lahq;)V

    .line 244
    iget-object v0, p0, Lahq$3;->a:Lahq;

    invoke-static {v0}, Lahq;->h(Lahq;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lahq$3;->a:Lahq;

    invoke-static {v1}, Lahq;->g(Lahq;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 245
    iget-object v0, p0, Lahq$3;->a:Lahq;

    invoke-static {v0, p1}, Lahq;->a(Lahq;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 246
    iget-object v0, p0, Lahq$3;->a:Lahq;

    invoke-static {v0, p2}, Lahq;->a(Lahq;Lcom/migu/voiceads/MIGUNativeAdDataRef;)Lcom/migu/voiceads/MIGUNativeAdDataRef;

    .line 247
    iget-object v0, p0, Lahq$3;->a:Lahq;

    invoke-virtual {v0}, Lahq;->q()Lahw;

    move-result-object v0

    new-instance v1, Lahq$3$1;

    invoke-direct {v1, p0}, Lahq$3$1;-><init>(Lahq$3;)V

    invoke-virtual {v0, v1, v4, v5}, Lahw;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    :cond_0
    :goto_1
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lahq$3;->a:Lahq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lahq;->c(Lahq;Z)Z

    .line 236
    const-string/jumbo v0, "HomeSplashScreenHelper"

    const-string/jumbo v1, "splashADData is null"

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lahq$3;->a:Lahq;

    invoke-static {v0, v3}, Lahq;->d(Lahq;Z)Z

    .line 256
    iget-object v0, p0, Lahq$3;->a:Lahq;

    invoke-virtual {v0}, Lahq;->k()V

    goto :goto_1
.end method
