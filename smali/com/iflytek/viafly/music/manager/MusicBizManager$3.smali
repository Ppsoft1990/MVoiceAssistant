.class Lcom/iflytek/viafly/music/manager/MusicBizManager$3;
.super Ljava/lang/Object;
.source "MusicBizManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/music/manager/MusicBizManager;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/manager/MusicBizManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/manager/MusicBizManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/music/manager/MusicBizManager;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$3;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$3;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-static {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b(Lcom/iflytek/viafly/music/manager/MusicBizManager;)Larc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$3;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-static {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b(Lcom/iflytek/viafly/music/manager/MusicBizManager;)Larc;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$3;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0, v1}, Larc;->b(Laqy;)Z

    .line 255
    :cond_0
    return-void
.end method
