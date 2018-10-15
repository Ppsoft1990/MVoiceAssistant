.class Lcom/iflytek/viafly/music/manager/MusicBizManager$a$1;
.super Ljava/lang/Object;
.source "MusicBizManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->a(ILapo;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/manager/MusicBizManager$a;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/manager/MusicBizManager$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/music/manager/MusicBizManager$a;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a$1;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a$1;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager$a;

    iget-object v0, v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-static {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->c(Lcom/iflytek/viafly/music/manager/MusicBizManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u56e0\u5408\u4f5c\u65b9\u8981\u6c42\uff0c\u8be5\u8d44\u6e90\u6682\u65f6\u4e0b\u67b6"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 569
    return-void
.end method
