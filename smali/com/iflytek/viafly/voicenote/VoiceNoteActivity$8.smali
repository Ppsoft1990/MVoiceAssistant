.class Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$8;
.super Landroid/os/Handler;
.source "VoiceNoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;
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
    .line 900
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$8;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 903
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 919
    :goto_0
    return-void

    .line 905
    :pswitch_0
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$8;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setVisibility(I)V

    .line 906
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$8;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->d()V

    goto :goto_0

    .line 909
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$8;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->b(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/EditText;

    move-result-object v1

    .line 910
    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 911
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$8;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->b(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 914
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_2
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$8;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    const v2, 0x7f0b083b

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 903
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
