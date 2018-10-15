.class Lql$3;
.super Landroid/content/BroadcastReceiver;
.source "NovelDetailPageBusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lql;


# direct methods
.method constructor <init>(Lql;)V
    .locals 0
    .param p1, "this$0"    # Lql;

    .prologue
    .line 292
    iput-object p1, p0, Lql$3;->a:Lql;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 295
    const-string/jumbo v1, "NovelDetailPageBusinessAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBroadcastReceiver || action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.NEWS_TTS_STOP_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lql$3;->a:Lql;

    invoke-static {v1}, Lql;->t(Lql;)Lcom/iflytek/framework/business/components/SynthesizeComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->pause()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const-string/jumbo v1, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    const-string/jumbo v1, "NovelDetailPageBusinessAdapter"

    const-string/jumbo v2, "onReceive | CALL_RECEIVE_ACTION"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string/jumbo v1, "com.iflytek.cmcc.CALL_STATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "callState":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    iget-object v1, p0, Lql$3;->a:Lql;

    invoke-static {v1}, Lql;->u(Lql;)Lcom/iflytek/framework/business/components/SynthesizeComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->pause()V

    goto :goto_0
.end method
