.class final Lo/gt;
.super Ljava/lang/Object;
.source "UpPwdErrDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/gs;


# direct methods
.method constructor <init>(Lo/gs;)V
    .locals 0

    iput-object p1, p0, Lo/gt;->a:Lo/gs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/gt;->a:Lo/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gt;->a:Lo/gs;

    invoke-virtual {v0}, Lo/gs;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gt;->a:Lo/gs;

    invoke-virtual {v0}, Lo/gs;->dismiss()V

    :cond_0
    return-void
.end method
