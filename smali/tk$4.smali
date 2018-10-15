.class Ltk$4;
.super Ljava/lang/Object;
.source "UserCenterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltk;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltk;


# direct methods
.method constructor <init>(Ltk;)V
    .locals 0
    .param p1, "this$0"    # Ltk;

    .prologue
    .line 916
    iput-object p1, p0, Ltk$4;->a:Ltk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 919
    iget-object v0, p0, Ltk$4;->a:Ltk;

    invoke-static {v0}, Ltk;->h(Ltk;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 920
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    iget-object v0, p0, Ltk$4;->a:Ltk;

    invoke-static {v0}, Ltk;->j(Ltk;)V

    .line 923
    :cond_0
    iget-object v0, p0, Ltk$4;->a:Ltk;

    const-string/jumbo v1, "skip_completeInfo"

    invoke-static {v0, v1}, Ltk;->a(Ltk;Ljava/lang/String;)V

    .line 924
    return-void
.end method
