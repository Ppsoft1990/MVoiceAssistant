.class Lcom/iflytek/viafly/music/manager/MusicBizManager$2;
.super Ljava/lang/Object;
.source "MusicBizManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/music/manager/MusicBizManager;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/player/entity/Audio;

.field final synthetic b:Lcom/iflytek/viafly/music/manager/MusicBizManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/manager/MusicBizManager;Lcom/iflytek/viafly/player/entity/Audio;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/music/manager/MusicBizManager;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$2;->b:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    iput-object p2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$2;->a:Lcom/iflytek/viafly/player/entity/Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$2;->b:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    iget-object v1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$2;->a:Lcom/iflytek/viafly/player/entity/Audio;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Lcom/iflytek/viafly/music/manager/MusicBizManager;Lcom/iflytek/viafly/player/entity/Audio;)V

    .line 181
    return-void
.end method
