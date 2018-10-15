.class Ladr$4;
.super Ljava/lang/Object;
.source "AbsResultHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladr;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ladr;


# direct methods
.method constructor <init>(Ladr;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ladr;

    .prologue
    .line 242
    iput-object p1, p0, Ladr$4;->b:Ladr;

    iput-object p2, p0, Ladr$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Ladr$4;->b:Ladr;

    iget-object v1, p0, Ladr$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ladr;->b(Ljava/lang/String;)V

    .line 246
    return-void
.end method
