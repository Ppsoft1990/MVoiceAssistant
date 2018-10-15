.class Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$1;
.super Landroid/os/Handler;
.source "HomeAudioResourceCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$1;->a:Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$1;->a:Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->a(Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$1;->a:Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->b(Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v0

    const-string/jumbo v1, "N_LISTEN_BOOK"

    invoke-virtual {v0, v1}, Lalq;->a(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$1;->a:Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->c(Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v0

    const-string/jumbo v1, "LISTEN_BOOK"

    invoke-virtual {v0, v1}, Lalq;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
