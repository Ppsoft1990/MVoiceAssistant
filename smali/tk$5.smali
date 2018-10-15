.class Ltk$5;
.super Ljava/lang/Object;
.source "UserCenterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltk;->g()V
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
    .line 961
    iput-object p1, p0, Ltk$5;->a:Ltk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 964
    iget-object v0, p0, Ltk$5;->a:Ltk;

    invoke-static {v0}, Ltk;->k(Ltk;)V

    .line 965
    iget-object v0, p0, Ltk$5;->a:Ltk;

    invoke-static {v0}, Ltk;->l(Ltk;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 966
    return-void
.end method
