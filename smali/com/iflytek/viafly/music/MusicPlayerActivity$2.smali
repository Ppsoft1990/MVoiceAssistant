.class Lcom/iflytek/viafly/music/MusicPlayerActivity$2;
.super Ljava/lang/Object;
.source "MusicPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/music/MusicPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/MusicPlayerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/MusicPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$2;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 213
    if-eqz p3, :cond_0

    .line 214
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$2;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->b(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lbaa;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$2;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->a(Lcom/iflytek/viafly/music/MusicPlayerActivity;Z)Z

    .line 209
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$2;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->a(Lcom/iflytek/viafly/music/MusicPlayerActivity;Z)Z

    .line 203
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$2;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->a(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Laqj;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Laqj;->b(I)V

    .line 204
    return-void
.end method
