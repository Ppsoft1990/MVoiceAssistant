.class Lbaz$2;
.super Ljava/lang/Object;
.source "VoiceNoteTtsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaz;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbaz;


# direct methods
.method constructor <init>(Lbaz;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbaz;

    .prologue
    .line 127
    iput-object p1, p0, Lbaz$2;->b:Lbaz;

    iput-object p2, p0, Lbaz$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lbaz$2;->b:Lbaz;

    invoke-static {v0}, Lbaz;->b(Lbaz;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lbaz$2;->b:Lbaz;

    invoke-static {v0}, Lbaz;->a(Lbaz;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "set mSpeakButAnim stop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lbaz$2;->b:Lbaz;

    invoke-static {v0}, Lbaz;->b(Lbaz;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 134
    iget-object v0, p0, Lbaz$2;->b:Lbaz;

    invoke-static {v0}, Lbaz;->b(Lbaz;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 136
    :cond_0
    iget-object v0, p0, Lbaz$2;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->dismiss()V

    .line 137
    const-string/jumbo v0, ""

    iget-object v1, p0, Lbaz$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lbaz$2;->b:Lbaz;

    invoke-static {v0}, Lbaz;->c(Lbaz;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbaz$2;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    :cond_1
    return-void
.end method
