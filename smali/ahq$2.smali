.class Lahq$2;
.super Ljava/util/TimerTask;
.source "HomeSplashScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahq;->z()V
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
    .line 210
    iput-object p1, p0, Lahq$2;->a:Lahq;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lahq$2;->a:Lahq;

    invoke-static {v0}, Lahq;->b(Lahq;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lahq$2;->a:Lahq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lahq;->b(Lahq;Z)Z

    .line 215
    invoke-virtual {p0}, Lahq$2;->cancel()Z

    .line 216
    const-string/jumbo v0, "HomeSplashScreenHelper"

    const-string/jumbo v1, "loadpic has time out"

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lahq$2;->a:Lahq;

    invoke-virtual {v0}, Lahq;->k()V

    .line 219
    :cond_0
    return-void
.end method
