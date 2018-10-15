.class Laiu$4;
.super Ljava/lang/Object;
.source "HomeAudioResourcePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laiu;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Laiu;


# direct methods
.method constructor <init>(Laiu;I)V
    .locals 0
    .param p1, "this$0"    # Laiu;

    .prologue
    .line 297
    iput-object p1, p0, Laiu$4;->b:Laiu;

    iput p2, p0, Laiu$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 300
    invoke-static {}, Laio;->b()Laio;

    move-result-object v0

    iget v1, p0, Laiu$4;->a:I

    invoke-virtual {v0, v1}, Laio;->a(I)V

    .line 301
    return-void
.end method
