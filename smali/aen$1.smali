.class Laen$1;
.super Ljava/lang/Object;
.source "ContactMessageItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laen;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laen;


# direct methods
.method constructor <init>(Laen;)V
    .locals 0
    .param p1, "this$0"    # Laen;

    .prologue
    .line 99
    iput-object p1, p0, Laen$1;->a:Laen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Laen$1;->a:Laen;

    invoke-static {v0}, Laen;->a(Laen;)Ladb;

    move-result-object v0

    const-string/jumbo v1, "cancelCall"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ladb;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 103
    return-void
.end method
