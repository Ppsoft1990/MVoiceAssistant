.class Lql$5;
.super Ljava/lang/Object;
.source "NovelDetailPageBusinessAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lql;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic c:Lql;


# direct methods
.method constructor <init>(Lql;Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lql;

    .prologue
    .line 370
    iput-object p1, p0, Lql$5;->c:Lql;

    iput-object p2, p0, Lql$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lql$5;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 374
    const-string/jumbo v0, "NovelDetailPageBusinessAdapter"

    const-string/jumbo v1, "click continue"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x1

    invoke-static {v0}, Lql;->e(Z)Z

    .line 376
    iget-object v0, p0, Lql$5;->c:Lql;

    invoke-static {v0}, Lql;->w(Lql;)Lcom/iflytek/framework/business/components/SynthesizeComponents;

    move-result-object v0

    iget-object v1, p0, Lql$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lql$5;->c:Lql;

    invoke-static {v2}, Lql;->v(Lql;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 378
    iget-object v0, p0, Lql$5;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 379
    return-void
.end method
