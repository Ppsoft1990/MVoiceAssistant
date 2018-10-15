.class public abstract Lauz;
.super Ljava/lang/Object;
.source "MediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lauz$a;
    }
.end annotation


# instance fields
.field public e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lauz;->e:Landroid/content/Context;

    .line 24
    return-void
.end method
