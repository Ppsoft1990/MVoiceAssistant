.class Lql$2$1;
.super Ljava/lang/Object;
.source "NovelDetailPageBusinessAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lql$2;->onTtsPlayComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lql$2;


# direct methods
.method constructor <init>(Lql$2;)V
    .locals 0
    .param p1, "this$1"    # Lql$2;

    .prologue
    .line 255
    iput-object p1, p0, Lql$2$1;->a:Lql$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lql$2$1;->a:Lql$2;

    iget-object v0, v0, Lql$2;->a:Lql;

    invoke-static {v0}, Lql;->o(Lql;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u64ad\u653e\u51fa\u9519"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    return-void
.end method
