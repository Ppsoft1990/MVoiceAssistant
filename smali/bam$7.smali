.class Lbam$7;
.super Ljava/lang/Object;
.source "VersionCheckManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbam;->a(IILjava/lang/Object;)V
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
    .line 201
    iput-object p1, p0, Lbam$7;->a:Lbam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 205
    iget-object v0, p0, Lbam$7;->a:Lbam;

    invoke-static {v0}, Lbam;->b(Lbam;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxs;->a(Landroid/content/Context;)Lxs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lxs;->a(I)V

    .line 206
    iget-object v0, p0, Lbam$7;->a:Lbam;

    iget-object v1, p0, Lbam$7;->a:Lbam;

    invoke-virtual {v1}, Lbam;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lbam;->a(ILjava/lang/String;)V

    .line 208
    iget-object v0, p0, Lbam$7;->a:Lbam;

    invoke-static {v0}, Lbam;->a(Lbam;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->dismiss()V

    .line 209
    return-void
.end method
