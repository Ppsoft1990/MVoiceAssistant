.class Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;
.super Ljava/lang/Object;
.source "PersonalizedRingtoneActivity.java"

# interfaces
.implements Lawx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 197
    const-string/jumbo v0, "PersonalizedRingtoneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError() errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    const/4 v3, 0x0

    .line 180
    const-string/jumbo v0, "PersonalizedRingtoneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResult() list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;->a(I)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a(Ljava/util/List;Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;Ljava/util/List;)Ljava/util/List;

    .line 189
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
