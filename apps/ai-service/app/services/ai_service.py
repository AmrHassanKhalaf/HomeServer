class AIService:

    def summarize(self, text: str):

        if len(text) < 150:
            return text

        return text[:150] + "..."
