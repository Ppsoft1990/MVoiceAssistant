.class Lcom/migu/voiceads/view/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/view/AdView;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/view/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x2

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "procMsgPageTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v2}, Lcom/migu/voiceads/view/AdView;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "% , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v2}, Lcom/migu/voiceads/view/AdView;->getContentHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/AdView;->getContentHeight()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/AdView;->o()Lcom/migu/voiceads/bussiness/a$b;

    move-result-object v0

    sget-object v1, Lcom/migu/voiceads/bussiness/a$b;->d:Lcom/migu/voiceads/bussiness/a$b;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    invoke-static {v0}, Lcom/migu/voiceads/view/AdView;->b(Lcom/migu/voiceads/view/AdView;)I

    move-result v0

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    invoke-static {v0}, Lcom/migu/voiceads/view/AdView;->b(Lcom/migu/voiceads/view/AdView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/migu/voiceads/view/AdView;->a(Lcom/migu/voiceads/view/AdView;I)V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Loading ad timeout, reload again!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u52a0\u8f7d\u8d85\u65f6\uff0c\u91cd\u8bd5\u7b2c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    invoke-static {v2}, Lcom/migu/voiceads/view/AdView;->b(Lcom/migu/voiceads/view/AdView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6b21"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u52a0\u8f7d\u8d85\u65f6\uff0c\u91cd\u8bd5\u7b2c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    invoke-static {v2}, Lcom/migu/voiceads/view/AdView;->b(Lcom/migu/voiceads/view/AdView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6b21"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    invoke-static {v0}, Lcom/migu/voiceads/view/AdView;->c(Lcom/migu/voiceads/view/AdView;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/migu/voiceads/view/AdView;->a(Lcom/migu/voiceads/view/AdView;I)V

    iget-object v0, p0, Lcom/migu/voiceads/view/h;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x5

    const v2, 0x11560

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    goto :goto_0
.end method
