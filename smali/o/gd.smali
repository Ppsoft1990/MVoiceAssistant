.class final Lo/gd;
.super Ljava/lang/Object;
.source "CommonReminderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/gc;


# direct methods
.method constructor <init>(Lo/gc;)V
    .locals 0

    iput-object p1, p0, Lo/gd;->a:Lo/gc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/gd;->a:Lo/gc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gd;->a:Lo/gc;

    invoke-virtual {v0}, Lo/gc;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gd;->a:Lo/gc;

    invoke-virtual {v0}, Lo/gc;->dismiss()V

    :cond_0
    iget-object v0, p0, Lo/gd;->a:Lo/gc;

    invoke-static {v0}, Lo/gc;->a(Lo/gc;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/gd;->a:Lo/gc;

    invoke-static {v0}, Lo/gc;->b(Lo/gc;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/gd;->a:Lo/gc;

    invoke-static {v0}, Lo/gc;->a(Lo/gc;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
