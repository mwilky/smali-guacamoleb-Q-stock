.class Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;
.super Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicInternal"
.end annotation


# instance fields
.field private final mDefaultIsRtl:Z


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;-><init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V

    iput-boolean p2, p0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return-void
.end method


# virtual methods
.method protected defaultIsRtl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return p0
.end method
