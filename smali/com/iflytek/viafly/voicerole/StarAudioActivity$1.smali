.class Lcom/iflytek/viafly/voicerole/StarAudioActivity$1;
.super Ljava/lang/Object;
.source "StarAudioActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/voicerole/StarAudioActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 875
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$1;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 883
    const-string/jumbo v0, "StarAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "see"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$1;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 886
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$1;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$1;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-static {v1, p2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Lcom/iflytek/viafly/voicerole/StarAudioActivity;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->b(Lcom/iflytek/viafly/voicerole/StarAudioActivity;I)V

    .line 890
    :goto_0
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$1;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 879
    return-void
.end method
