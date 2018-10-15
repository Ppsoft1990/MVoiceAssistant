.class Lcom/iflytek/viafly/ui/view/MicrophoneView$3;
.super Landroid/os/Handler;
.source "MicrophoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/view/MicrophoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/view/MicrophoneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$3;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 153
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, "imageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$3;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-static {v2, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$600(Lcom/iflytek/viafly/ui/view/MicrophoneView;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 160
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$3;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
