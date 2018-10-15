.class Laeu$10;
.super Ljava/lang/Object;
.source "ContactCreateItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeu;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Laeu;


# direct methods
.method constructor <init>(Laeu;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Laeu;

    .prologue
    .line 360
    iput-object p1, p0, Laeu$10;->b:Laeu;

    iput-object p2, p0, Laeu$10;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 374
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 367
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Landroid/app/Activity;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    iget-object v1, p0, Laeu$10;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b(Landroid/widget/EditText;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    goto :goto_0

    .line 371
    :pswitch_1
    iget-object v0, p0, Laeu$10;->b:Laeu;

    iget-object v1, p0, Laeu$10;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Laeu;->a(Laeu;Landroid/widget/EditText;)V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
