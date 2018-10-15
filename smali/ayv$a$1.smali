.class Layv$a$1;
.super Ljava/lang/Object;
.source "TranslatePicPresenter.java"

# interfaces
.implements Layq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layv$a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layv$a;


# direct methods
.method constructor <init>(Layv$a;)V
    .locals 0
    .param p1, "this$1"    # Layv$a;

    .prologue
    .line 378
    iput-object p1, p0, Layv$a$1;->a:Layv$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 381
    iget-object v0, p0, Layv$a$1;->a:Layv$a;

    iget-object v0, v0, Layv$a;->a:Layv;

    invoke-static {v0}, Layv;->d(Layv;)Layd;

    move-result-object v0

    const-string/jumbo v1, "translation"

    const-string/jumbo v2, "input"

    invoke-virtual {v0, v1, p1, v2}, Layd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method
