.class final Lo/gg;
.super Ljava/lang/Object;
.source "SendSmsRemindDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lo/ge;


# direct methods
.method constructor <init>(Lo/ge;)V
    .locals 0

    iput-object p1, p0, Lo/gg;->a:Lo/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lo/gg;->a:Lo/ge;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ge;->a(Lo/ge;Z)Z

    iget-object v0, p0, Lo/gg;->a:Lo/ge;

    invoke-static {v0}, Lo/ge;->b(Lo/ge;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lt;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lo/gg;->a:Lo/ge;

    invoke-static {v1}, Lo/ge;->c(Lo/ge;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lt;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lo/gg;->a:Lo/ge;

    invoke-static {v1}, Lo/ge;->d(Lo/ge;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/gg;->a:Lo/ge;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ge;->a(Lo/ge;Z)Z

    iget-object v0, p0, Lo/gg;->a:Lo/ge;

    invoke-static {v0}, Lo/ge;->d(Lo/ge;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lo/gg;->a:Lo/ge;

    invoke-static {v1}, Lo/ge;->e(Lo/ge;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
