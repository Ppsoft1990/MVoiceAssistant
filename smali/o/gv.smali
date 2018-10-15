.class final Lo/gv;
.super Ljava/lang/Object;
.source "UpgradeFailDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/gu;


# direct methods
.method constructor <init>(Lo/gu;)V
    .locals 0

    iput-object p1, p0, Lo/gv;->a:Lo/gu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/gv;->a:Lo/gu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gv;->a:Lo/gu;

    invoke-virtual {v0}, Lo/gu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gv;->a:Lo/gu;

    invoke-virtual {v0}, Lo/gu;->dismiss()V

    :cond_0
    return-void
.end method
