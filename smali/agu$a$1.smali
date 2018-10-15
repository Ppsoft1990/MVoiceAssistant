.class Lagu$a$1;
.super Ljava/lang/Object;
.source "UserGuideCustomSpeakerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagu$a;->onPlayBeginCallBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagu$a;


# direct methods
.method constructor <init>(Lagu$a;)V
    .locals 0
    .param p1, "this$1"    # Lagu$a;

    .prologue
    .line 169
    iput-object p1, p0, Lagu$a$1;->a:Lagu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lagu$a$1;->a:Lagu$a;

    invoke-static {v0}, Lagu$a;->a(Lagu$a;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 173
    iget-object v1, p0, Lagu$a$1;->a:Lagu$a;

    iget-object v0, p0, Lagu$a$1;->a:Lagu$a;

    invoke-static {v0}, Lagu$a;->a(Lagu$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v1, v0}, Lagu$a;->a(Lagu$a;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 174
    iget-object v0, p0, Lagu$a$1;->a:Lagu$a;

    invoke-static {v0}, Lagu$a;->b(Lagu$a;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 175
    return-void
.end method
