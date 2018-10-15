.class Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;
.super Ljava/lang/Object;
.source "VoiceNoteActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/16 v2, 0x8

    .line 193
    if-eqz p2, :cond_1

    .line 194
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->d(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->e(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->f(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lbaw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lbaw;

    move-result-object v0

    invoke-virtual {v0}, Lbaw;->a()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lbaw;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->g(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 207
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setVisibility(I)V

    .line 209
    :cond_1
    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->g(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "\u65b0\u5efa"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
