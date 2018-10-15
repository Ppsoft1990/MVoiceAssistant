.class Lql$4;
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
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic b:Lql;


# direct methods
.method constructor <init>(Lql;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lql;

    .prologue
    .line 362
    iput-object p1, p0, Lql$4;->b:Lql;

    iput-object p2, p0, Lql$4;->a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 366
    iget-object v0, p0, Lql$4;->a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 367
    return-void
.end method
