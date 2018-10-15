.class Lamz$1;
.super Lame;
.source "BookNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamz;


# direct methods
.method constructor <init>(Lamz;)V
    .locals 0
    .param p1, "this$0"    # Lamz;

    .prologue
    .line 165
    iput-object p1, p0, Lamz$1;->a:Lamz;

    invoke-direct {p0}, Lame;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    const/4 v4, 0x2

    .line 222
    const-string/jumbo v1, "BookNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBizResultError errorCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v1, 0x3f7

    if-ne v1, p1, :cond_1

    .line 224
    iget-object v1, p0, Lamz$1;->a:Lamz;

    invoke-static {v1}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lamz$1;->a:Lamz;

    invoke-static {v1}, Lamz;->b(Lamz;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.action.CHARGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 228
    iget-object v1, p0, Lamz$1;->a:Lamz;

    invoke-static {v1}, Lamz;->b(Lamz;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const/16 v1, 0x3f0

    if-eq v1, p1, :cond_2

    const/16 v1, 0x3fb

    if-eq v1, p1, :cond_2

    const/16 v1, 0x3fc

    if-ne v1, p1, :cond_0

    .line 232
    :cond_2
    iget-object v1, p0, Lamz$1;->a:Lamz;

    invoke-static {v1}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V
    .locals 2
    .param p1, "chapterAudio"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .prologue
    .line 203
    const-string/jumbo v0, "BookNotificationManager"

    const-string/jumbo v1, "onUpdateChapterInfo  "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lamz$1;->a:Lamz;

    invoke-static {v0}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V
    .locals 3
    .param p1, "chargeInfo"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .prologue
    .line 209
    const-string/jumbo v1, "BookNotificationManager"

    const-string/jumbo v2, "onChargeInfo  "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lamz$1;->a:Lamz;

    invoke-static {v1}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    if-eqz p1, :cond_0

    .line 212
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lamz$1;->a:Lamz;

    invoke-static {v1}, Lamz;->b(Lamz;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.action.CHARGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string/jumbo v1, "charge"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lamz$1;->a:Lamz;

    invoke-static {v1}, Lamz;->b(Lamz;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 218
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lamz$1;->a:Lamz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamz;->a(Z)V

    .line 242
    return-void
.end method

.method public c(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 181
    const-string/jumbo v0, "BookNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayStateUpdated state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 184
    iget-object v0, p0, Lamz$1;->a:Lamz;

    invoke-static {v0}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    iget-object v0, p0, Lamz$1;->a:Lamz;

    invoke-static {v0}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    .line 187
    iget-object v0, p0, Lamz$1;->a:Lamz;

    invoke-static {v0}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 175
    const-string/jumbo v0, "BookNotificationManager"

    const-string/jumbo v1, "onPlayComplete "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lamz$1;->a:Lamz;

    invoke-static {v0}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    return-void
.end method

.method public e(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    const/4 v3, 0x2

    .line 193
    const-string/jumbo v0, "BookNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayError errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const v0, 0xc3578

    if-eq p1, v0, :cond_0

    const v0, 0xc3579

    if-ne p1, v0, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lamz$1;->a:Lamz;

    invoke-static {v0}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lamz$1;->a:Lamz;

    invoke-static {v0}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 169
    const-string/jumbo v0, "BookNotificationManager"

    const-string/jumbo v1, "onPlayComplete "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lamz$1;->a:Lamz;

    invoke-static {v0}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lamz$1;->a:Lamz;

    invoke-virtual {v0}, Lamz;->f()V

    .line 252
    iget-object v0, p0, Lamz$1;->a:Lamz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lamz;->a(Lamz;Lamp;)Lamp;

    .line 253
    return-void
.end method
