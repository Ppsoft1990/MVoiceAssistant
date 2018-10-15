.class Laiu$7;
.super Ljava/lang/Object;
.source "HomeAudioResourcePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laiu;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laiu;


# direct methods
.method constructor <init>(Laiu;)V
    .locals 0
    .param p1, "this$0"    # Laiu;

    .prologue
    .line 394
    iput-object p1, p0, Laiu$7;->a:Laiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 397
    iget-object v2, p0, Laiu$7;->a:Laiu;

    invoke-static {v2}, Laiu;->f(Laiu;)Laix;

    move-result-object v2

    invoke-virtual {v2}, Laix;->d()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 398
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    instance-of v2, v0, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 399
    check-cast v1, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    .line 400
    .local v1, "item":Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;
    if-eqz v1, :cond_0

    .line 401
    invoke-static {}, Laio;->b()Laio;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->q()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Laio;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .end local v1    # "item":Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;
    :cond_0
    return-void
.end method
