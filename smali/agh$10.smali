.class Lagh$10;
.super Ljava/lang/Object;
.source "WebPageDownloadManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagh;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

.field final synthetic b:Lagh;


# direct methods
.method constructor <init>(Lagh;Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lagh;

    .prologue
    .line 538
    iput-object p1, p0, Lagh$10;->b:Lagh;

    iput-object p2, p0, Lagh$10;->a:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 542
    iget-object v0, p0, Lagh$10;->a:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->dismiss()V

    .line 543
    return-void
.end method
