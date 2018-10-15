.class Lcom/iflytek/viafly/music/manager/MusicBizManager$1;
.super Ljava/lang/Object;
.source "MusicBizManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/music/manager/MusicBizManager;
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
    .line 147
    iput-object p1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$1;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$1;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-static {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Lcom/iflytek/viafly/music/manager/MusicBizManager;)V

    .line 151
    return-void
.end method
