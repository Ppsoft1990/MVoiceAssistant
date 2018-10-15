.class final Lo/gm;
.super Ljava/lang/Object;
.source "SmsBlackListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/gl;


# direct methods
.method constructor <init>(Lo/gl;)V
    .locals 0

    iput-object p1, p0, Lo/gm;->a:Lo/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/gm;->a:Lo/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gm;->a:Lo/gl;

    invoke-virtual {v0}, Lo/gl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gm;->a:Lo/gl;

    invoke-virtual {v0}, Lo/gl;->dismiss()V

    :cond_0
    return-void
.end method
