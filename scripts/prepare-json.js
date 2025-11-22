// scripts/prepare-pdf.js
import fs from "fs";
import path from "path";

const inputPath = path.resolve("src/data/info.json");
const outputPathPdf = path.resolve("src/data/info-pdf.json");
const outputPathOnline = path.resolve("src/data/info-online.json");

const info = JSON.parse(fs.readFileSync(inputPath, "utf-8"));

const filteredContactsPdf = info.contact.entries.filter((entry) => {
  if (entry.addclass === "for-online") {
    return false;
  }
  return true;
});

const filteredContactsOnline = info.contact.entries.filter((entry) => {
  if (entry.addclass === "for-pdf") {
    return false;
  }
  return true;
});

const pdfInfo = {
  ...info,
  contact: {
    ...info.contact,
    entries: filteredContactsPdf,
  },
};

const OnlineInfo = {
  ...info,
  contact: {
    ...info.contact,
    entries: filteredContactsOnline,
  },
};

fs.writeFileSync(outputPathPdf, JSON.stringify(pdfInfo, null, 2));
fs.writeFileSync(outputPathOnline, JSON.stringify(OnlineInfo, null, 2));

console.log("PDF JSON created at:", outputPathPdf, "and:", outputPathOnline);
