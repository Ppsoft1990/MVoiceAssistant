.class Lcom/iflytek/viafly/smartschedule/AnimImageView$2;
.super Landroid/os/Handler;
.source "AnimImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/AnimImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/AnimImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/AnimImageView;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$2;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 131
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 132
    .local v1, "imageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    const-string/jumbo v2, "AnimImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage | show imageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$2;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-static {v2, v1}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->access$600(Lcom/iflytek/viafly/smartschedule/AnimImageView;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$2;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
