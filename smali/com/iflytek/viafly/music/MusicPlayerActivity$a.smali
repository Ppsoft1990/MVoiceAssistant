.class Lcom/iflytek/viafly/music/MusicPlayerActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/music/MusicPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/MusicPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/iflytek/viafly/music/MusicPlayerActivity;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$a;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/music/MusicPlayerActivity;Lcom/iflytek/viafly/music/MusicPlayerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;
    .param p2, "x1"    # Lcom/iflytek/viafly/music/MusicPlayerActivity$1;

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/music/MusicPlayerActivity$a;-><init>(Lcom/iflytek/viafly/music/MusicPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 502
    if-eqz p2, :cond_0

    const-string/jumbo v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$a;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->c()V

    .line 505
    :cond_0
    return-void
.end method
