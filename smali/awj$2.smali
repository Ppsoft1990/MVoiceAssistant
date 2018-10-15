.class Lawj$2;
.super Ljava/util/TimerTask;
.source "TtsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawj;->a(Ljava/lang/String;Lju;JLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lawj;


# direct methods
.method constructor <init>(Lawj;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lawj;

    .prologue
    .line 109
    iput-object p1, p0, Lawj$2;->c:Lawj;

    iput-object p2, p0, Lawj$2;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lawj$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 112
    const-string/jumbo v1, "ScheduleMediaTts"

    const-string/jumbo v2, "startTts(), Delay Timer is Over -> start tts..."

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, "params":Landroid/os/Bundle;
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "stream"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    iget-object v1, p0, Lawj$2;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 118
    iget-object v1, p0, Lawj$2;->c:Lawj;

    invoke-static {v1}, Lawj;->a(Lawj;)Lpp;

    move-result-object v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lawj$2;->c:Lawj;

    invoke-static {v1}, Lawj;->b(Lawj;)V

    .line 121
    :cond_0
    iget-object v1, p0, Lawj$2;->c:Lawj;

    invoke-static {v1}, Lawj;->a(Lawj;)Lpp;

    move-result-object v1

    iget-object v2, p0, Lawj$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lawj$2;->c:Lawj;

    invoke-static {v3}, Lawj;->c(Lawj;)Lju;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 122
    iget-object v1, p0, Lawj$2;->c:Lawj;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lawj;->a(Lawj;Z)Z

    .line 123
    iget-object v1, p0, Lawj$2;->c:Lawj;

    const/4 v2, 0x0

    iput-object v2, v1, Lawj;->a:Ljava/util/Timer;

    .line 124
    return-void
.end method
