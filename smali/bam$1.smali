.class Lbam$1;
.super Ljava/lang/Object;
.source "VersionCheckManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbam;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbam;


# direct methods
.method constructor <init>(Lbam;)V
    .locals 0
    .param p1, "this$0"    # Lbam;

    .prologue
    .line 102
    iput-object p1, p0, Lbam$1;->a:Lbam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lbam$1;->a:Lbam;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbam;->a(Lbam;Z)Z

    .line 107
    iget-object v0, p0, Lbam$1;->a:Lbam;

    invoke-static {v0}, Lbam;->a(Lbam;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->dismiss()V

    .line 108
    return-void
.end method
