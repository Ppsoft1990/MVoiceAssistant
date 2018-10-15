.class Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;
.super Ljava/lang/Object;
.source "VoiceNoteActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 247
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 250
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 282
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 252
    :pswitch_1
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->b(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-static {p2, v7}, Lcom/iflytek/yd/util/UIUtil;->isInMyView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    invoke-static {v6, v4}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;Z)Z

    .line 253
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->l(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 254
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v4, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->c:I

    .line 255
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v4, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->d:I

    goto :goto_0

    :cond_1
    move v4, v5

    .line 252
    goto :goto_1

    .line 257
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    iput v5, v4, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->c:I

    .line 258
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    iput v5, v4, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->d:I

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v6, v5}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;Z)Z

    .line 264
    :pswitch_3
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->l(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    iget v6, v6, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->c:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    iget v6, v6, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->d:I

    if-eqz v6, :cond_0

    .line 266
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 267
    .local v2, "secX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 268
    .local v3, "secY":I
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    iget v6, v6, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->c:I

    sub-int v0, v2, v6

    .line 269
    .local v0, "delX":I
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    iget v6, v6, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->d:I

    sub-int v1, v3, v6

    .line 270
    .local v1, "delY":I
    mul-int v6, v0, v0

    mul-int v7, v1, v1

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    iget v7, v7, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->b:I

    if-gt v6, v7, :cond_0

    .line 271
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    iput v5, v6, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->c:I

    .line 272
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    iput v5, v6, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->d:I

    .line 274
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    sget-object v7, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->detail:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    invoke-static {v6, v7, v4}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;Z)V

    goto/16 :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
