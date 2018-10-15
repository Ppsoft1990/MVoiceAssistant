.class Lto$3;
.super Ljava/lang/Object;
.source "UserVoiceResetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lto;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lto;


# direct methods
.method constructor <init>(Lto;)V
    .locals 0
    .param p1, "this$0"    # Lto;

    .prologue
    .line 335
    iput-object p1, p0, Lto$3;->a:Lto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 338
    iget-object v0, p0, Lto$3;->a:Lto;

    invoke-static {v0}, Lto;->d(Lto;)V

    .line 339
    return-void
.end method
