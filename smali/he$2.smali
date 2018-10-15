.class Lhe$2;
.super Ljava/lang/Object;
.source "ContactManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhe;->b(Lhe$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhe$a;

.field final synthetic b:Lhe;


# direct methods
.method constructor <init>(Lhe;Lhe$a;)V
    .locals 0
    .param p1, "this$0"    # Lhe;

    .prologue
    .line 452
    iput-object p1, p0, Lhe$2;->b:Lhe;

    iput-object p2, p0, Lhe$2;->a:Lhe$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lhe$2;->b:Lhe;

    iget-object v1, p0, Lhe$2;->a:Lhe$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhe;->a(Lhe$a;Z)V

    .line 457
    return-void
.end method
