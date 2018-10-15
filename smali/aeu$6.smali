.class Laeu$6;
.super Ljava/lang/Object;
.source "ContactCreateItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeu;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeu;


# direct methods
.method constructor <init>(Laeu;)V
    .locals 0
    .param p1, "this$0"    # Laeu;

    .prologue
    .line 236
    iput-object p1, p0, Laeu$6;->a:Laeu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 242
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Landroid/app/Activity;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    iget-object v1, p0, Laeu$6;->a:Laeu;

    invoke-static {v1}, Laeu;->d(Laeu;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b(Landroid/widget/EditText;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Laeu$6;->a:Laeu;

    iget-object v1, p0, Laeu$6;->a:Laeu;

    invoke-static {v1}, Laeu;->d(Laeu;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Laeu;->a(Laeu;Landroid/widget/EditText;)V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
