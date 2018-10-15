.class final Lo/gx;
.super Ljava/lang/Object;
.source "UpgradeRemindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/gw;


# direct methods
.method constructor <init>(Lo/gw;)V
    .locals 0

    iput-object p1, p0, Lo/gx;->a:Lo/gw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/gx;->a:Lo/gw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gx;->a:Lo/gw;

    invoke-virtual {v0}, Lo/gw;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gx;->a:Lo/gw;

    invoke-virtual {v0}, Lo/gw;->dismiss()V

    :cond_0
    return-void
.end method
