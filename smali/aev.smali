.class public Laev;
.super Laee;
.source "ContactCreateMessage.java"


# instance fields
.field public a:Lada;


# direct methods
.method public constructor <init>(Lada;)V
    .locals 0
    .param p1, "createView"    # Lada;

    .prologue
    .line 15
    invoke-direct {p0}, Laee;-><init>()V

    .line 16
    iput-object p1, p0, Laev;->a:Lada;

    .line 17
    return-void
.end method
