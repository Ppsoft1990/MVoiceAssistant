.class Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$1;
.super Ljava/lang/Object;
.source "VoiceNoteActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 166
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$1;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$1;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    const-string/jumbo v1, "\u5df2\u8fbe\u5230\u6700\u5927\u8f93\u5165\u5b57\u6570\u9650\u5236"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$1;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->c(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$1;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->b(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5b57"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 178
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$1;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lbaw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$1;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lbaw;

    move-result-object v0

    invoke-virtual {v0}, Lbaw;->b()V

    .line 173
    :cond_0
    return-void
.end method
