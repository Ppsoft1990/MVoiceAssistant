.class public Lacm;
.super Ljava/lang/Object;
.source "MessageEditHandlerForWeb.java"

# interfaces
.implements Lacq;


# instance fields
.field a:Ljava/lang/Object;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lacm;->a:Ljava/lang/Object;

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacm;->b:Z

    return-void
.end method


# virtual methods
.method public varargs a(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 23
    aget-object v0, p2, v1

    iput-object v0, p0, Lacm;->a:Ljava/lang/Object;

    .line 24
    iput-boolean v1, p0, Lacm;->b:Z

    .line 25
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 13
    iget-object v1, p0, Lacm;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lacm;->a:Ljava/lang/Object;

    instance-of v1, v1, Lade;

    if-eqz v1, :cond_0

    .line 14
    iget-object v0, p0, Lacm;->a:Ljava/lang/Object;

    check-cast v0, Lade;

    .line 15
    .local v0, "inputView":Lade;
    invoke-virtual {v0, p1}, Lade;->a(Z)V

    .line 16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lacm;->b:Z

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lacm;->a:Ljava/lang/Object;

    .line 19
    .end local v0    # "inputView":Lade;
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lacm;->b:Z

    return v0
.end method
